const fs = require('fs');
const sinon = require('sinon');
const { expect } = require('chai');

const { leArquivo } = require('./leArquivo');

const CONTEUDO_DO_ARQUIVO = 'VQV com TDD';


describe('leArquivo', () => {
  describe('Quando o arquivo existe', () => {
    before(() => {
      sinon.stub(fs, 'readFileSync').returns(CONTEUDO_DO_ARQUIVO);      
    });

    after(() => {
      fs.readFileSync.restore();
    });

    describe('a resposta', () => {
      const resposta = leArquivo('arquivo.txt');

      it('é uma string', () => {
        expect(resposta).to.be.a('string');
      });

      it('é igual ao conteúdo do arquivo', () => {
        expect(resposta).to.be.equals(CONTEUDO_DO_ARQUIVO);
      });
    });
  });

  describe('Quando o arquivo não existe', () => {
    before(() => {
      sinon
        .stub(fs, 'readFileSync')
        .throws(new Error('Arquivo não encontrado'));
    });

    after(() => {
      fs.readFileSync.restore();
    });

    it('a resposta é igual a "null"', () => {
      const resposta = leArquivo('arquivo_nao_existente.txt');

      expect(resposta).to.be.equal(null);
    });
  });
});
