# Get public and private function definition files.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

# Dot source the files
Foreach($import in @($Public + $Private))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        $err = $_ 
        Write-Error -Message "Failed to import function $($import.fullname): $($err.Exception.Message)"
    }
}

# Here I might...
# Read in or create an initial config file and variable
# Export Public functions ($Public.BaseName) for WIP modules
# Set variables visible to the module and its functions only

Export-ModuleMember -Function $Public.Basename




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
    
    Gray = @{
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
}


