def story(template)
    if template == "adventure"
        adventure = {
            :title => "The Harrowing Adventures Of",
            :story => ["My name is", "I read", "My favorite color is", "I drive a"]
        }
        
    elsif template == "sci_fi"
        sci_fi = {
            :title => "Heaven On Mars",
            :story => ["My name is", "I read", "My favorite color is", "I drive a"]
        }
        
    elsif template == "angst"
        angst = {
            :title => "Forget About Me",
            :story => ["My name is", "I read", "My favorite color is", "I drive a"]
        }
        
        elsif template == "fantasy"
        fantasy = {
            :title => "Open Your Eyes",
            :story => ["My name is", "I read", "My favorite color is", "I drive a"]
        }
        
        elsif template == "contempory"
        contempory = {
            :title => "California Love",
            :story => ["My name is", "I read", "My favorite color is", "I drive a"]
        }
    end
end