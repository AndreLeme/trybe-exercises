import { Component } from "react";

class Pokemon extends Component {
	render() {
		const { name, type, averageWeight, image } = this.props.pokemon;

		return (
			<div>
				<p> {name}</p>
				<p> {type}</p>
				<p> {averageWeight.value} {averageWeight.measuramentUnit} </p>
				<p> {image}</p>
			</div>
		);		
	}
}

export default Pokemon;
