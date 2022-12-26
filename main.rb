def caesar_cipher(str, shift)
    letters = "abcdefghijklmnopqrstuvwxyz"
    strspl = Array.new(str.split(''))

    ansarr = strspl.map do |item|
        if !letters.include?(item.downcase) then
            item 
        elsif item == item.downcase then
            (((item.ord - "a".ord - shift) % 26) + "a".ord).chr
        elsif item == item.upcase then 
            (((item.ord - "A".ord - shift) % 26) + "A".ord).chr
        end
    end
    ansarr.join("")
end

    p caesar_cipher("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ", 3)