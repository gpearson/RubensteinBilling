<cfoutput>
<cfif qry_selectExportTableList.RecordCount is 0>
	<p class="ErrorMessage">There are currently no export tables.</p>
<cfelse>
	#fn_DisplayCurrentRecordNumbers("", "", "<br>", Variables.columnCount, 0, 0, 0, Variables.columnHeaderList, "", True)#
	<cfloop Query="qry_selectExportTableList">
		<tr class="TableText" valign="top"<cfif (CurrentRow mod 2) is 0> bgColor="f4f4ff"</cfif> onMouseOver="bgColor='FFFFCC'" <cfif (CurrentRow mod 2) is 0>onMouseOut="bgColor='f4f4ff'"<cfelse>onMouseOut="bgColor='FFFFFF'"</cfif>>
		<td>#qry_selectExportTableList.exportTableName#</td>
		<td>&nbsp;</td>
		<td><cfif qry_selectExportTableList.exportTableDescription is "">&nbsp;<cfelse>#qry_selectExportTableList.exportTableDescription#</cfif></td>
		<cfif Variables.isSuperuserPermission is True>
			<td>&nbsp;</td>
			<td><cfif qry_selectExportTableList.exportTableStatus is 1>Active<cfelse>Inactive</cfif></td>
		</cfif>
		<cfif ListFind(Variables.permissionActionList, "moveExportTableUp") and ListFind(Variables.permissionActionList, "moveExportTableDown")>
			<td>&nbsp;</td>
			<td>
				<cfif CurrentRow is RecordCount>
					<img src="#Application.billingUrlRoot#/images/blank.gif" width="14" height="13" alt="" border="0">
				<cfelse>
					<a href="index.cfm?method=export.moveExportTableDown&exportTableID=#qry_selectExportTableList.exportTableID#"><img src="#Application.billingUrlRoot#/images/arrow_down.gif" width="14" height="13" alt="" border="0"></a>
				</cfif>
				<cfif CurrentRow is 1>
					<img src="#Application.billingUrlRoot#/images/blank.gif" width="14" height="13" alt="" border="0">
				<cfelse>
					<a href="index.cfm?method=export.moveExportTableUp&exportTableID=#qry_selectExportTableList.exportTableID#"><img src="#Application.billingUrlRoot#/images/arrow_up.gif" width="14" height="13" alt="" border="0"></a>
				</cfif>
			</td>
		</cfif>
		<cfif ListFind(Variables.permissionActionList, "listExportTableFields")>
			<td>&nbsp;</td>
			<td class="SmallText"><a href="index.cfm?method=export.listExportTableFields&exportTableID=#qry_selectExportTableList.exportTableID#" class="plainlink">Manage</a></td>
		<cfelseif ListFind(Variables.permissionActionList, "listExportTableFieldCompany")>
			<td>&nbsp;</td>
			<td class="SmallText"><a href="index.cfm?method=export.listExportTableFieldCompany&exportTableID=#qry_selectExportTableList.exportTableID#" class="plainlink">View Fields</a></td>
		</cfif>
		</tr>
	</cfloop>
	</table>
</cfif>
</cfoutput>