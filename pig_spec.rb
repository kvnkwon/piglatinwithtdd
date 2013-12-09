require 'rspec'
require_relative 'pig'

describe Translator do
  it 'should translate words that begin with a consonant' do
    expect(Translator.new('duck').translate).to eql('uckday ')
  end

  it "should translate words that begin with a cluster of consonants" do
    expect(Translator.new("glove").translate).to eql('oveglay ')
  end

  it 'should translate words that begin with a vowel' do
    expect(Translator.new('egg').translate).to eql('eggway ')
  end


end