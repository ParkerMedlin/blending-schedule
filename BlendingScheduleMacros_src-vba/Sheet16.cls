Private Sub Worksheet_SelectionChange(ByVal target As Range)

'--------------------------------------------------------------------

'R1 triggers MacrosOn
If Selection.Count = 1 Then
    If Not Intersect(target, Range("$S$1")) Is Nothing Then
        Call macrosOn
    End If
'S1 triggers Macros Off
    If Not Intersect(target, Range("$T$1")) Is Nothing Then
        Call macrosOff
    End If
End If

End Sub



Private Sub Worksheet_Change(ByVal target As Range)

'Timestamper for when I enter a count for a blend
    If InStr(1, (Range("AA1").Value), "On") > 0 Then
        If Not Intersect(target, Range("$I:$I")) Is Nothing Then
            If target.Row > 1 Then
               target.Offset(0, 2) = Now()
            End If
        End If
    End If

End Sub