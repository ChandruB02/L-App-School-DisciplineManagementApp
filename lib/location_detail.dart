import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget{
	final Location location;
	
	LocationDetail(this.location);
	
	@override
	Widget build(BuildContext context){
			return Scaffold(
				appBar: AppBar( title: Text(location.name)),
				body: Column(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					crossAxisAlignment: CrossAxisAlignment.stretch,
					children: _renderBody(context, location),
				), //Column
			);
	}

	List<Widget> _renderBody(BuildContext context, Location location){
		List<Widget> result = [];
		result.add(_bannerImage(location.url, 170.0));
		result.addAll(_renderFacts(context, location));
		return result;
	}

	List<Widget> _renderFacts(BuildContext context, Location location){
		List<Widget> result = [];
		for(int i=0; i<location.facts.length; i++){
			result.add(_sectionTitle(location.facts[i].title));
			result.add(_sectionText(location.facts[i].text));
		}
		return result;
	}

	Widget _sectionTitle(String text){
		return Container(
			padding: EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
			child: Text(text,
			textAlign: TextAlign.left,
			style: Styles.headerLarge,
			));
	}

	Widget _sectionText(String text){
		return Container(
			padding: EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
			child: Text(text, style: Styles.textDefault),
		);
	}

	Widget _bannerImage(String url, double height){
		return Container(
			padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
			constraints: BoxConstraints.tightFor(height: height),
			child: Image.network(url, fit: BoxFit.fitWidth),
		);
	}
}



