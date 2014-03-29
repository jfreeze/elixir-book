#!/usr/bin/env ruby


class ProcessFile
  def self.clean(file)
    if file.is_a?(Array)
      file.each { |f| new(f).clean }
    else
      new(file).clean
    end
  end

  def initialize(file)
    @file = file
    @data = File.read(@file).split(/\n/)
  end

  def clean
    puts "cleaning #{@file} => #{new_file}"
    @data.shift
    get_title
    replace_title
    fix_code_sections
    remove_section_numbers
    fix_bad_section
    fix_special
    save
  end

  def save
    File.open(new_file, "w+") { |f| f.puts @data.join("\n") }
  end

  def new_file
    prefix = File.basename(File.dirname @file).sub("chapters","")
    file = File.basename(@file).sub(/\.markdown/, ".md")
    File.join("chapters",[prefix.empty? ? nil : prefix, file].compact.join("_"))
  end

  def fix_bad_section
    @data.map! do |line|
      if (m = line.strip.match(/##\s+\d+\s+(.*)/))     
        "## #{m[1]}"
      else
        line
      end
    end
    ## 2 Lots To Do
  end

  def fix_special
    @data.map! do |line|
      if line.strip == "* plus these functions:"
        "plus these functions:"
      elsif line.strip == '### test/my\_project_test.exs'
        '### test/my\_project\_test.exs'
      else
        line
      end
    end
  end

  def fix_code_sections
    @data.map! do |line|
      if /^\s+```/ =~ line
        line.strip
      else
        line
      end
    end
  end

  def remove_section_numbers
    ## 7.1 Applications
    @data.map! do |line|
      sline = line.strip
      if (m=sline.match(/##\s+\d+\.\d+\s+(.*)/))
        "## #{m[1]}"
      elsif (m=sline.match(/###\s+\d+\.\d+\.\d+\s+(.*)/))
        "### #{m[1]}"
      else
        line
      end
    end
  end

  def replace_title
    @data.map! do |line|
      if line.strip == "# {{ page.title }}"
        "# #{@title}"
      else
        line
      end
    end
  end

  def get_title
    @data = @data.drop_while do |line| 
      if (m = line.strip.match(/title:\s+\d+\s+(.*)$/))
        @title = m[1]
      end
      line != "---"
    end
    @data.shift
  end
end

files = Dir["chapters/[1-9].markdown"]
ProcessFile.clean files
ex_unit_files = Dir["chapters/ex_unit/[1-9].markdown"]
ProcessFile.clean ex_unit_files
mix_files = Dir["chapters/mix/[1-9].markdown"]
ProcessFile.clean mix_files
