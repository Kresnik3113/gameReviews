class Makecap
    def self.cap(text)
        flag=false
        finshed = ""
    
        text.each_char do |char|
            if flag == true && char.count("a-zA-Z") > 0
                char = char.capitalize()
                flag=false
                finshed.concat(char)
                
                
    
            elsif  char == '.' 
                flag=true
                finshed.concat(char)
          
            else
                finshed.concat(char)
                
            end
            
          
        end
        return finshed
    end
    
end        
    
