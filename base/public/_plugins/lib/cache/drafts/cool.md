```rb
        unless File.directory?("_logs")
            create_folder = Dir.mkdir("_logs") # w
        else
            puts false
        end

        unless true
        end

        unless File.file?("_plugins/lib/cache/sus/out.txt")
            puts "invalid"
            out_file = File.new("_plugins/lib/cache/sus/out.txt", "r") # w
            puts out_file
            out_file.close

            file_info = File.open("_plugins/lib/cache/sus/out.txt")
            puts file_info.read

            file.close
            #...
           #  out_file.puts("write your stuff here")
            #...
        else
            out_file = File.new("_plugins/lib/cache/sus/out.txt", "r") # w
            puts out_file
            out_file.close
            return nil;
        end

```
