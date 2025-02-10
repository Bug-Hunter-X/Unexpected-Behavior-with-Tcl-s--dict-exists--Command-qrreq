proc get_value {key} {
    if {[dict exists $::my_dict $key]} {
        return [dict get $::my_dict $key]
    } else {
        return ""
    }
}

set ::my_dict {a 1 b 2 c 3}
puts [get_value a]
puts [get_value d]
puts [get_value a]
puts [get_value e] 
#Improved error handling
proc get_value_improved {key default_value} {
    if {[dict exists $::my_dict $key]} {
        return [dict get $::my_dict $key]
    } else {
        return $default_value
    }
}
puts "Improved handling: [get_value_improved z 0]" 