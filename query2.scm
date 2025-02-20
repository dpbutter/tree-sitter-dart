; Capturing function and method definitions
(function_signature
    return_type: (_) @return_type
    name: (identifier) @name
    (formal_parameter_list 
      (formal_parameter) @param
      ("," (formal_parameter) @param)*
    )?
)
