.class final Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;
.super Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPointCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# direct methods
.method public varargs constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$a;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointCollection;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v10, v0, [D

    move v7, v1

    move v0, v1

    move v6, v1

    :goto_0
    if-ge v7, v9, :cond_4

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "element\'s value is incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move v2, v3

    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "element\'s value is incorrect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    move v2, v0

    move v0, v1

    :goto_2
    iget-object v12, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    array-length v12, v12

    if-ge v0, v12, :cond_9

    iget-object v12, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v12, v12, v0

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v1, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "element\'s value is incorrect"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    aput-wide v12, v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, v10, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "element\'s value is incorrect"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1}, Lcom/artfulbits/aiCharts/Exceptions/XmlNodeValueParseException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V

    throw v2

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {v0, v4, v5, v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    :goto_3
    return-object v0

    :cond_5
    if-nez v6, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    new-instance v2, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;

    const-string v3, "Child node not found"

    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a:Ljava/lang/String;

    :goto_4
    invoke-direct {v2, v3, p1, v0}, Lcom/artfulbits/aiCharts/Exceptions/XmlElementAttributeNotFoundException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    throw v2

    :cond_7
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    move v0, v2

    move v2, v6

    goto/16 :goto_1
.end method

.method public final synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection$c;->a(Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v0

    return-object v0
.end method
