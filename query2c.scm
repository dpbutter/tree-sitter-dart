( _
    type: (_)? @return_type
    [
     declarator: (reference_declarator (function_declarator
          declarator: [
            (qualified_identifier) @name
            (identifier) @name
            (field_identifier) @name
            (operator_name) @name
            (template_function name: (_) @name)
          ] 
          parameters: (parameter_list (parameter_declaration)+ @param)?
       ))?
     declarator: (function_declarator
          declarator: [
            (qualified_identifier) @name
            (identifier) @name
            (field_identifier) @name
            (operator_name) @name
            (template_function name: (_) @name)
          ] 
          parameters: (parameter_list (parameter_declaration) @param)?
       )?
     declarator: (pointer_declarator (function_declarator declarator: (identifier) @name)) 
    ]
    parameters: [ (parameter_list (_) @param) ]?
    [body: (_) value: _ ]? @body
)?

