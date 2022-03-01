.class public Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private a:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;->a:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;->a:Lorg/w3c/dom/Node;

    return-object v0
.end method
