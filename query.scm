(import_or_export
    (library_import
        (import_specification
            (configurable_uri
                (uri
                    (string_literal
                        (string_content) @module
                    )
                )
                (configuration_uri
                    (_
                        (uri_test) @conditional_import
                    )
                    (uri
                        (string_literal
                            (string_content) @module
                        )
                    )?
                )*
            )
            (identifier)? @alias
            (combinator
                "show"
                (identifier) @show
                ("," (identifier) @show)*
            )?
            (combinator
                "hide"
                (identifier) @hide
                ("," (identifier) @hide)*
            )?
        )
    )
) @import_statement

