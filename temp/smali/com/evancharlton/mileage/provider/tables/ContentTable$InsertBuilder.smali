.class public final Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;
.super Ljava/lang/Object;
.source "ContentTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/tables/ContentTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "InsertBuilder"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evancharlton/mileage/provider/tables/ContentTable;


# direct methods
.method public constructor <init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V
    .locals 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->this$0:Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mData:Ljava/util/HashMap;

    .line 160
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;J)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 169
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 8

    .prologue
    .line 173
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mData:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 174
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 175
    .local v4, "length":I
    new-array v5, v4, [Ljava/lang/String;

    .line 177
    .local v5, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mData:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 180
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_0

    .line 182
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, ") VALUES ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    .line 188
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_2

    .line 190
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_3
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v6, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
