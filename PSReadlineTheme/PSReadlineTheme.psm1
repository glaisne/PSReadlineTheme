# Get public and private function definition files.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach($import in @($Public + $Private))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# Here I might...
# Read in or create an initial config file and variable
# Export Public functions ($Public.BaseName) for WIP modules
# Set variables visible to the module and its functions only

Export-ModuleMember -Function $Public.Basename

<#
Black
Blue
Cyan
DarkBlue
DarkCyan
DarkGray
DarkGreen
DarkMagenta
DarkRed
DarkYellow
Gray
Green
Magenta
Red
White
Yellow
#>


$Themes = @{
    Default = @{
        ContinuationPromptForegroundColor = 'DarkYellow'
        ContinuationPromptBackgroundColor = 'Blue'
        DefaultTokenForegroundColor       = 'DarkYellow'
        CommentForegroundColor            = 'DarkGreen'
        KeywordForegroundColor            = 'Green'
        StringForegroundColor             = 'DarkCyan'
        OperatorForegroundColor           = 'DarkGray'
        VariableForegroundColor           = 'Green'
        CommandForegroundColor            = 'Yellow'
        ParameterForegroundColor          = 'DarkGray'
        TypeForegroundColor               = 'Gray'
        NumberForegroundColor             = 'White'
        MemberForegroundColor             = 'White'
        DefaultTokenBackgroundColor       = 'Blue'
        CommentBackgroundColor            = 'Blue'
        KeywordBackgroundColor            = 'Blue'
        StringBackgroundColor             = 'Blue'
        OperatorBackgroundColor           = 'Blue'
        VariableBackgroundColor           = 'Blue'
        CommandBackgroundColor            = 'Blue'
        ParameterBackgroundColor          = 'Blue'
        TypeBackgroundColor               = 'Blue'
        NumberBackgroundColor             = 'Blue'
        MemberBackgroundColor             = 'Blue'
        EmphasisForegroundColor           = 'Cyan'
        EmphasisBackgroundColor           = 'Blue'
        ErrorForegroundColor              = 'Red'
        ErrorBackgroundColor              = 'Blue'
    }
    
    Gray    = @{
        ContinuationPromptForegroundColor = 'DarkYellow'
        ContinuationPromptBackgroundColor = 'Gray'
        DefaultTokenForegroundColor       = 'DarkYellow'
        CommentForegroundColor            = 'DarkGreen'
        KeywordForegroundColor            = 'Green'
        StringForegroundColor             = 'DarkCyan'
        OperatorForegroundColor           = 'DarkGray'
        VariableForegroundColor           = 'DarkGreen'
        CommandForegroundColor            = 'Yellow'
        ParameterForegroundColor          = 'DarkGray'
        TypeForegroundColor               = 'Black'
        NumberForegroundColor             = 'White'
        MemberForegroundColor             = 'White'
        DefaultTokenBackgroundColor       = 'Gray'
        CommentBackgroundColor            = 'Gray'
        KeywordBackgroundColor            = 'Gray'
        StringBackgroundColor             = 'Gray'
        OperatorBackgroundColor           = 'Gray'
        VariableBackgroundColor           = 'Gray'
        CommandBackgroundColor            = 'Gray'
        ParameterBackgroundColor          = 'Gray'
        TypeBackgroundColor               = 'Gray'
        NumberBackgroundColor             = 'Gray'
        MemberBackgroundColor             = 'Gray'
        EmphasisForegroundColor           = 'Cyan'
        EmphasisBackgroundColor           = 'Gray'
        ErrorForegroundColor              = 'Red'
        ErrorBackgroundColor              = 'Gray'
    }
    
    Blue = @{
        ContinuationPromptForegroundColor = 'DarkYellow'
        ContinuationPromptBackgroundColor = 'Blue'
        DefaultTokenForegroundColor       = 'DarkYellow'
        CommentForegroundColor            = 'DarkGreen'
        KeywordForegroundColor            = 'Green'
        StringForegroundColor             = 'Cyan'
        OperatorForegroundColor           = 'DarkGray'
        VariableForegroundColor           = 'Green'
        CommandForegroundColor            = 'Yellow'
        ParameterForegroundColor          = 'DarkGray'
        TypeForegroundColor               = 'Gray'
        NumberForegroundColor             = 'White'
        MemberForegroundColor             = 'White'
        DefaultTokenBackgroundColor       = 'Blue'
        CommentBackgroundColor            = 'Blue'
        KeywordBackgroundColor            = 'Blue'
        StringBackgroundColor             = 'Black'
        OperatorBackgroundColor           = 'Blue'
        VariableBackgroundColor           = 'Blue'
        CommandBackgroundColor            = 'Blue'
        ParameterBackgroundColor          = 'Blue'
        TypeBackgroundColor               = 'Blue'
        NumberBackgroundColor             = 'Blue'
        MemberBackgroundColor             = 'Blue'
        EmphasisForegroundColor           = 'Cyan'
        EmphasisBackgroundColor           = 'Blue'
        ErrorForegroundColor              = 'Red'
        ErrorBackgroundColor              = 'Blue'
    }
    
    DarkRed = @{
        # Vailable colors: Blue, DarkBlue
        ContinuationPromptForegroundColor = 'DarkYellow'
        ContinuationPromptBackgroundColor = 'DarkRed'
        DefaultTokenForegroundColor       = 'DarkYellow'
        CommentForegroundColor            = 'DarkGreen'
        KeywordForegroundColor            = 'Magenta'
        StringForegroundColor             = 'DarkCyan'
        OperatorForegroundColor           = 'DarkGray'
        VariableForegroundColor           = 'Green'
        CommandForegroundColor            = 'Yellow'
        ParameterForegroundColor          = 'DarkGray'
        TypeForegroundColor               = 'Black'
        NumberForegroundColor             = 'White'
        MemberForegroundColor             = 'White'
        DefaultTokenBackgroundColor       = 'DarkRed'
        CommentBackgroundColor            = 'DarkRed'
        KeywordBackgroundColor            = 'DarkRed'
        StringBackgroundColor             = 'Black'
        OperatorBackgroundColor           = 'DarkRed'
        VariableBackgroundColor           = 'DarkRed'
        CommandBackgroundColor            = 'DarkRed'
        ParameterBackgroundColor          = 'DarkRed'
        TypeBackgroundColor               = 'DarkRed'
        NumberBackgroundColor             = 'DarkRed'
        MemberBackgroundColor             = 'DarkRed'
        EmphasisForegroundColor           = 'Cyan'
        EmphasisBackgroundColor           = 'Red'
        ErrorForegroundColor              = 'Red'
        ErrorBackgroundColor              = 'Black'
    }
    DarkCyan = @{
        ContinuationPromptForegroundColor = 'DarkYellow'
        ContinuationPromptBackgroundColor = 'DarkCyan'
        DefaultTokenForegroundColor       = 'DarkYellow'
        CommentForegroundColor            = 'DarkGreen'
        KeywordForegroundColor            = 'Green'
        StringForegroundColor             = 'Black'
        OperatorForegroundColor           = 'Gray'
        VariableForegroundColor           = 'Green'
        CommandForegroundColor            = 'Yellow'
        ParameterForegroundColor          = 'Gray'
        TypeForegroundColor               = 'Gray'
        NumberForegroundColor             = 'White'
        MemberForegroundColor             = 'White'
        DefaultTokenBackgroundColor       = 'DarkCyan'
        CommentBackgroundColor            = 'DarkCyan'
        KeywordBackgroundColor            = 'DarkCyan'
        StringBackgroundColor             = 'DarkCyan'
        OperatorBackgroundColor           = 'DarkCyan'
        VariableBackgroundColor           = 'DarkCyan'
        CommandBackgroundColor            = 'DarkCyan'
        ParameterBackgroundColor          = 'DarkCyan'
        TypeBackgroundColor               = 'DarkCyan'
        NumberBackgroundColor             = 'DarkCyan'
        MemberBackgroundColor             = 'DarkCyan'
        EmphasisForegroundColor           = 'Cyan'
        EmphasisBackgroundColor           = 'DarkCyan'
        ErrorForegroundColor              = 'Red'
        ErrorBackgroundColor              = 'DarkCyan'
    }
}


