:- module(data_properties, [
      data_property/3                % ?Subject, +Property, -Value
   ]).

:- use_module(library('semweb/rdf_db.pl')).

:- rdf_meta
  data_property(r, r, -).

%% data_property(?Subject, +Property, -Value)
%
% Find data property value for subject
% 
% @param Subject Subject of the data property
% @param Property Data property
% @param Value Value of the data property
% 
data_property(Subject, Property, Value) :-
  rdf_has(Subject, Property, literal(type(_, Value))).