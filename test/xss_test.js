'use strict';

var fs = require('fs'),
    path = require('path'),
    xss = require('../lib/xss.js'),
    expect = require('chai').expect,
    escapeMap = {
        'js' : 'f_escape_js',
        'html' : 'f_escape_xml',
        'data' : 'f_escape_data',
        'path' : 'f_escape_path',
        'event' : 'f_escape_event',
        'no_escape' : 'escape:none'
    },
    safeVars = [];
var option = {
        'escapeMap' : escapeMap,
        'leftDelimiter' : '{#',
        'rightDelimiter' : '#}'
    };


describe('xss.parse(option)', function(){
    it('escapeAll', function(){
        xss.config(option);
        var result = xss.repair(fs.readFileSync('./test/source/escape_all.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_all.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapeEvent', function(){
        var result = xss.repair(fs.readFileSync('./test/source/escape_event.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_event.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapeJs', function(){
        var result = xss.repair(fs.readFileSync('./test/source/escape_js.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_js.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapePath', function(){
        var result = xss.repair(fs.readFileSync('./test/source/escape_path.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_path.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapeXml', function(){
        var result = xss.repair(fs.readFileSync('./test/source/escape_xml.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_xml.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('noneEscape', function(){
        var result = xss.repair(fs.readFileSync('./test/source/none_escape.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/none_escape.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('noneHtmlTag', function(){
        var result = xss.repair(fs.readFileSync('./test/source/none_html_tag.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/none_html_tag.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('safeVars', function(){
        safeVars = ['fis_safe','fis_xss'];
        option['xssSafeVars'] = safeVars;
        xss.config(option);
        var result = xss.repair(fs.readFileSync('./test/source/safe_vars.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/safe_vars.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapeMap', function(){
        escapeMap.js = 'fis_js_escape';
        escapeMap.html ='fis_html_escape';
        escapeMap.event ='fis_event_escape'; 
        escapeMap.path='f_escape_path';
        option['escapeMap'] = escapeMap;
        xss.config(option);
        var result = xss.repair(fs.readFileSync('./test/source/escape_map.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_map.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('xss.parse(option)', function(){
    it('escapeMap', function(){
        escapeMap.js = 'fis_js_escape';
        escapeMap.html ='fis_html_escape';
        escapeMap.event ='fis_event_escape';
        escapeMap.path='f_escape_path';
        option['escapeMap'] = escapeMap;
        option.leftDelimiter = '{';
        option.rightDelimiter = '}';
        xss.config(option);
        var result = xss.repair(fs.readFileSync('./test/source/escape_default_delimiter.tpl').toString());
        var expectContent = fs.readFileSync('./test/expect/escape_default_delimiter.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});