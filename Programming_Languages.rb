#Organizing Nested Data

#I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    }
    :javascript => {
      :type => "interpreted"
    }

  }
}

#I would like you to reformat the nested structure to be of the following form

{
  :ruby => {
    :style => [:oo],
    :type => "dynamic"
  },
  :python => {
    :style => [:oo],
    :type => "dynamic"
  }
  etc etc
}

container = {}
languages.each do |style, lang|
  lang.each do |key, value|
    
    if container[key].nil?
      container[key] = {}
    end
    if container[key][:style].nil?
       container[key][:style] = []
     end
     container[key][:style] << key
      
        value.each do |a,b|
        container[value][a] = b
      end
    end
  end
end

