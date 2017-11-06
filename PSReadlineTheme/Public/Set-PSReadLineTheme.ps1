<#
.Synopsis
Short description
.DESCRIPTION
Long description
.EXAMPLE
Example of how to use this cmdlet
.EXAMPLE
Another example of how to use this cmdlet
#>
function Set-PSReadLineTheme
{
    [CmdletBinding()]
    [Alias()]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        [string]
        $Name
    )

    if (-not $Themes.ContainsKey($name))
    {
        Write-Warning "That theme does not exist."
        return
    }

    # foreach ($Entry in $Themes[$name].Keys)
    # {
    #     #Write-host $Entry
    #     #write-host "param: $($Entry.padright(40)) Value: $($themes[$name][$Entry])"
    #     &{"Set-PSReadlineOption -$entry $($themes[$name][$Entry])"}
    # }

    set-psreadlineOption -TokenKind comment -ForegroundColor $themes[$name]['CommentForegroundColor']
    set-psreadlineOption -TokenKind Keyword -ForegroundColor $themes[$name]['KeywordForegroundColor']
    set-psreadlineOption -TokenKind String -ForegroundColor $themes[$name]['StringForegroundColor']
    set-psreadlineOption -TokenKind Operator -ForegroundColor $themes[$name]['OperatorForegroundColor']
    set-psreadlineOption -TokenKind Variable -ForegroundColor $themes[$name]['VariableForegroundColor']
    set-psreadlineOption -TokenKind Command -ForegroundColor $themes[$name]['CommandForegroundColor']
    set-psreadlineOption -TokenKind Parameter -ForegroundColor $themes[$name]['ParameterForegroundColor']
    set-psreadlineOption -TokenKind Type -ForegroundColor $themes[$name]['TypeForegroundColor']
    set-psreadlineOption -TokenKind Number -ForegroundColor $themes[$name]['NumberForegroundColor']
    set-psreadlineOption -TokenKind Member -ForegroundColor $themes[$name]['MemberForegroundColor']

    
    set-psreadlineOption -TokenKind comment -backgroundColor $themes[$name]['CommentbackgroundColor']
    set-psreadlineOption -TokenKind Keyword -backgroundColor $themes[$name]['KeywordbackgroundColor']
    set-psreadlineOption -TokenKind String -backgroundColor $themes[$name]['StringbackgroundColor']
    set-psreadlineOption -TokenKind Operator -backgroundColor $themes[$name]['OperatorbackgroundColor']
    set-psreadlineOption -TokenKind Variable -backgroundColor $themes[$name]['VariablebackgroundColor']
    set-psreadlineOption -TokenKind Command -backgroundColor $themes[$name]['CommandbackgroundColor']
    set-psreadlineOption -TokenKind Parameter -backgroundColor $themes[$name]['ParameterbackgroundColor']
    set-psreadlineOption -TokenKind Type -backgroundColor $themes[$name]['TypebackgroundColor']
    set-psreadlineOption -TokenKind Number -backgroundColor $themes[$name]['NumberbackgroundColor']
    set-psreadlineOption -TokenKind Member -backgroundColor $themes[$name]['MemberbackgroundColor']

    Set-PSReadlineOption -ContinuationPromptForegroundColor $themes[$name]['ContinuationPromptForegroundColor']
    Set-PSReadlineOption -ContinuationPromptBackgroundColor $themes[$name]['ContinuationPromptBackgroundColor']
    
    Set-PSReadlineOption -EmphasisForegroundColor $themes[$name]['EmphasisForegroundColor']
    Set-PSReadlineOption -EmphasisBackgroundColor $themes[$name]['EmphasisBackgroundColor']
    
    Set-PSReadlineOption -ErrorForegroundColor $themes[$name]['ErrorForegroundColor']
    Set-PSReadlineOption -ErrorBackgroundColor $themes[$name]['ErrorBackgroundColor']

    # Set-PSReadlineOption -ResetTokenColors
}
