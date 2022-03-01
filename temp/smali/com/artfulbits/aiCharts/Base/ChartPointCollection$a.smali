.class Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 7

    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [D

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist for specified node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {v1, v2, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist for specified node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attibute value is incorrect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->b:[Ljava/lang/String;

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " attibute value is incorrect"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v2

    :cond_2
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {v0, v3, v4, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;->a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method
