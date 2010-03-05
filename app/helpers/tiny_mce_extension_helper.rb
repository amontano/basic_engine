module TinyMceExtensionHelper
  
  def tagged_tinymce_script
  str = "<script type='text/javascript'>"+ "\n"
  str += "//<![CDATA[" + "\n"
  str += "tinyMCE.init({" + "\n"
  str += "editor_selector : 'mceEditor'," + "\n"
  str += "height : '270px'," + "\n"
  str += "mode : 'textareas'," + "\n"
  str += "noneditable_leave_contenteditable : 'true'," + "\n"
  str += "plugins : 'contextmenu,paste,media,fullscreen,template,noneditable, table, spellchecker'," + "\n"
  str += "template_external_list_url : '/templates/templates.js'," + "\n"
  str += "content_css : '/stylesheets/customtinymce.css'," + "\n"
  str += "theme : 'advanced'," + "\n"
  str += "theme_advanced_blockformats : 'p,h1,h2,h3,h4,h5,h6'," + "\n"
  str += "theme_advanced_buttons1 : ' fullscreen,separator,bold,italic,underline,strikethrough,separator,undo,redo,separator,link,unlink,template,formatselect, code'," + "\n"
  str += "theme_advanced_buttons2 : 'cut,copy,paste,separator,pastetext,pasteword,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifiyfull,separator,removeformat,charmap'," + "\n"
  str += "theme_advanced_buttons3 : 'EventButton,HimalayanButton,MapButton,OrgButton,PersonButton,PlaceButton, ProjectButton,RefButton,TibetanButton,TibTextButton, TopicButton'," + "\n"
  str += "theme_advanced_buttons4 : 'spellchecker,tablecontrols '," + "\n"
  str += "spellchecker_languages : '+English=en'," + "\n"
  str += "spellchecker_rpc_url : '/application/spellchecker'," + "\n"
  str += "gecko_spellcheck : 'true'," + "\n"
  str += "table_styles : 'Header 1=header1;Header 2=header2;Header 3=header3'," + "\n"
  str += "table_cell_styles : 'Header 1=header1;Header 2=header2;Header 3=header3;Table Cell=tableCel1'," + "\n"
  str += "table_row_styles : 'Header 1=header1;Header 2=header2;Header 3=header3;Table Row=tableRow1'," + "\n"
  str += "theme_advanced_resizing : 'true'," + "\n"
  str += "theme_advanced_toolbar_align : 'left'," + "\n"
  str += "theme_advanced_toolbar_location : 'top'," + "\n"
  str += "width : '430px',"  + "\n"
  str += "setup : function(ed) {" + "\n"
  str += "// Add Event button"  + "\n"
  str += "  ed.addButton('EventButton', { title : 'Event Tag', image : '/images/Evt3.gif',
                                  onclick : function() {
                                      var title_name = prompt('Type in ID (optional)', 'Type ID here');
                                      if (title_name != null){
                                          ed.focus();
                                          var current_selection = ed.selection.getContent();
                                          ed.selection.setContent('<span class=\"event\" title=\"' + title_name + '\">' + current_selection + '</span>');
                                      }   
                                  }
                      });//EventButton" +"\n"                
  str += "// Add Map button" + "\n"
  str += "  ed.addButton('MapButton', { title : 'Map Tag', image : '/images/Map3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"map\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}
                      								}
                      					});	//MapButton" + "\n"
  str += "// Add Ref button" + "\n"
  str += "  ed.addButton('RefButton', { title : 'Ref Tag', image : '/images/Ref3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"ref\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      					});	//RefButton" + "\n"

  str += "// Add Place button" + "\n"
  str += "  ed.addButton('PlaceButton', { title : 'Place Tag', image : '/images/Pla3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"place\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      				}); //PlaceButton" + "\n"
  str += "// Add Person button" + "\n"				
  str += "  ed.addButton('PersonButton', { title : 'Person Tag', image : '/images/Per3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"person\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}
                      								}
                      				});	//PersonButton" + "\n"
  str += "// Add Org button" + "\n"
  str += "  ed.addButton('OrgButton', { title : 'Organization Tag', image : '/images/Org3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									//if (title_name){
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"org\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      									//}
                      								}
                      				});	//OrgButton" + "\n"
  str += "// Add Project button" + "\n"				
  str += "  ed.addButton('ProjectButton', { title : 'Project Tag', image : '/images/Pro3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"project\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      				});	//ProjectButton" + "\n"															
  str += "// Add Himalayan button" + "\n"				
  str += "  ed.addButton('HimalayanButton', { title : 'Himalayan Tag', image : '/images/Him3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"himalayan\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      				});	//HimalayanButton" + "\n"						
  str += "// Add Tibetan button" + "\n"				
  str += "  ed.addButton('TibetanButton', { title : 'Tibetan Tag', image : '/images/Tib3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"tibetan\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}
                      								}
                      				});	//TibetanButton" + "\n"	
  str += "// Add Topic button" + "\n"				
  str += "  ed.addButton('TopicButton', { title : 'Topic Tag', image : '/images/Top3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"topic\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      				});	//TopicButton" + "\n"				
  str += "// Add TibText button" + "\n"				
  str += "  ed.addButton('TibTextButton', { title : 'TibText Tag', image : '/images/Txt3.gif',
                      								onclick : function() {
                      									var title_name = prompt('Type in ID (optional)', 'Type ID here');
                      									if (title_name != null){
                      										ed.focus();
                      										var current_selection = ed.selection.getContent();
                      										ed.selection.setContent('<span class=\"tibtext\" title=\"' + title_name + '\">' + current_selection + '</span>');
                      									}	
                      								}
                      				});	//TibTextButton" + "\n"                                                
  str += "} //function(ed)" +"\n"                      
  str += "});" + "\n"
  str += "//]]>" + "\n"
  str += "</script> "
  return str 
  end
  
  def enhanced_tinymce_script
  str = "<script type='text/javascript'>"+ "\n"
  str += "//<![CDATA[" + "\n"
  str += "tinyMCE.init({" + "\n"
  str += "editor_selector : 'mceEditor'," + "\n"
  str += "height : '270px'," + "\n"
  str += "mode : 'textareas'," + "\n"
  str += "noneditable_leave_contenteditable : 'true'," + "\n"
  str += "plugins : 'contextmenu,paste,media,fullscreen,template,noneditable, table, spellchecker'," + "\n"
  str += "template_external_list_url : '/templates/templates.js'," + "\n"
  str += "content_css : '/stylesheets/customtinymce.css'," + "\n"
  str += "theme : 'advanced'," + "\n"
  str += "theme_advanced_blockformats : 'p,h1,h2,h3,h4,h5,h6'," + "\n"
  str += "theme_advanced_buttons1 : ' fullscreen,separator,bold,italic,underline,strikethrough,separator,undo,redo,separator,link,unlink,template,formatselect, code'," + "\n"
  str += "theme_advanced_buttons2 : 'cut,copy,paste,separator,pastetext,pasteword,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifiyfull,separator,removeformat,charmap'," + "\n"
  str += "theme_advanced_buttons3 : 'spellchecker,tablecontrols '," + "\n"
  str += "spellchecker_languages : '+English=en'," + "\n"
  str += "spellchecker_rpc_url : '/application/spellchecker'," + "\n"
  str += "gecko_spellcheck : 'true'," + "\n"
  str += "table_styles : 'Header 1=header1;Header 2=header2;Header 3=header3'," + "\n"
  str += "table_cell_styles : 'Header 1=header1;Header 2=header2;Header 3=header3;Table Cell=tableCel1'," + "\n"
  str += "table_row_styles : 'Header 1=header1;Header 2=header2;Header 3=header3;Table Row=tableRow1'," + "\n"
  str += "theme_advanced_resizing : 'true'," + "\n"
  str += "theme_advanced_toolbar_align : 'left'," + "\n"
  str += "theme_advanced_toolbar_location : 'top'," + "\n"
  str += "width : '430px'"  + "\n"                      
  str += "});" + "\n"
  str += "//]]>" + "\n"
  str += "</script> "
  return str 
  end
end
  