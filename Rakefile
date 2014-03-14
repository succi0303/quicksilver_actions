# encoding: utf-8
require 'rake/clean'
require 'fileutils'

SOURCE_DIR = "#{Dir.pwd}/actions/"
QUICKSILVER_DIR = "#{ENV['HOME']}/Library/Application\ Support/Quicksilver/"
ACTION_DIR = "/Actions/"
TARGET_DIR = QUICKSILVER_DIR + ACTION_DIR

action_files = []
Dir.glob('actions/*') do |path|
  name = File.basename(path)
  next if name == '.'
  next if name == '..'
  action_files << name
end

# clobber
action_files.each do |file_name|
  CLOBBER.include(TARGET_DIR + file_name)
end

task :default => :install

desc 'Install actions.'
task :install do
  unless Dir.exists? QUICKSILVER_DIR
    puts "!!Quicksilverがインストールされていません!!"
    exit 1
  end

  unless Dir.exists? TARGET_DIR
    FileUtils.mkdir TARGET_DIR
  end

  action_files.each do |file_name|
    if File.exists? TARGET_DIR + file_name
      puts "#{file_name}がすでに存在します"
    else
      puts "#{file_name}をコピーします"
      # sh %Q(cp "#{SOURCE_DIR + file_name}" "#{TARGET_DIR + file_name}")
      sh %Q(ln -s "#{SOURCE_DIR + file_name}" "#{TARGET_DIR + file_name}")
    end
  end
  puts "アクションのインストールを完了しました"
end
