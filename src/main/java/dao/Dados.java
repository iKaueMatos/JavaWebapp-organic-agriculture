package dao;

public class Dados {
    private String uf;
    private int total;

    public Dados(String uf, int total) {
        this.uf = uf;
        this.total = total;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}

