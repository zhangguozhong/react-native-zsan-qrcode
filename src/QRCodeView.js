import { PropTypes } from 'prop-types'
import React,{Component} from 'react'
import {
    requireNativeComponent,
    View,
    processColor
} from 'react-native'

class QRCodeView extends Component {
    static propTypes={
        ...View.propTypes,
        text: PropTypes.string.isRequired,
        size:PropTypes.number,
        forecolor:PropTypes.string,
        backcolor:PropTypes.string,
        logo:PropTypes.string
    }
    static defaultProps={
        size:100,
        backcolor:'#FFFFFF',
        forecolor:'#000000'
    };

    constructor(props,content) {
        super(props,content);
    }

    setNativeProps(nativeProps) {
        this._root.setNativeProps(nativeProps);
    }

    render() {
        const {size,forecolor,backcolor} = this.props;
        const nativeProps = Object.assign({}, this.props);
        Object.assign(nativeProps, {
            forecolor:processColor(forecolor),
            backcolor:processColor(backcolor)
        });
        console.log(nativeProps);

        return(
            <RCTQRCodeView ref={component => this._root = component} {...nativeProps}/>
        )
    }
}

const RCTQRCodeView = requireNativeComponent('RCTQRCodeView',QRCodeView);
module.exports = QRCodeView;
