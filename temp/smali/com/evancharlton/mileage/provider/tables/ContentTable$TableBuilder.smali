.class public final Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
.super Ljava/lang/Object;
.source "ContentTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/tables/ContentTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "TableBuilder"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/evancharlton/mileage/provider/tables/ContentTable;


# direct methods
.method public constructor <init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V
    .locals 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->this$0:Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method private addField(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    return-object p0
.end method


# virtual methods
.method public addDouble(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "DOUBLE"

    invoke-direct {p0, p1, v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addInteger(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "INTEGER"

    invoke-direct {p0, p1, v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "TEXT"

    invoke-direct {p0, p1, v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addField(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
