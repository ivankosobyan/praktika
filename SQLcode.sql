BEGIN;


CREATE TABLE IF NOT EXISTS public."Виды_туров"
(

    CONSTRAINT "Виды_туров_pkey" PRIMARY KEY ("id_вида_тура")
);

CREATE TABLE IF NOT EXISTS public."Возвраты"
(

    CONSTRAINT "Возвраты_pkey" PRIMARY KEY ("id_возврата")
);

CREATE TABLE IF NOT EXISTS public."Клиенты"
(

    CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("id_клиента")
);

CREATE TABLE IF NOT EXISTS public."Питание"
(

    CONSTRAINT "Питание_pkey" PRIMARY KEY ("id_питания")
);

CREATE TABLE IF NOT EXISTS public."Продажи"
(

    CONSTRAINT "Продажи_pkey" PRIMARY KEY ("id_продажи")
);

CREATE TABLE IF NOT EXISTS public."Скидки"
(

    CONSTRAINT "Скидки_pkey" PRIMARY KEY ("id_скидки")
);

CREATE TABLE IF NOT EXISTS public."Сотрудники"
(

    CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("id_сотрудника")
);

CREATE TABLE IF NOT EXISTS public."Страны"
(

    CONSTRAINT "Страны_pkey" PRIMARY KEY ("id_страны")
);

CREATE TABLE IF NOT EXISTS public."Туры"
(

    CONSTRAINT "Туры_pkey" PRIMARY KEY ("id_тура")
);

ALTER TABLE IF EXISTS public."Возвраты"
    ADD CONSTRAINT "Возвраты_id_клиента_fkey" FOREIGN KEY ("id_клиента")
    REFERENCES public."Клиенты" ("id_клиента") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Возвраты"
    ADD CONSTRAINT "Возвраты_id_продажи_fkey" FOREIGN KEY ("id_продажи")
    REFERENCES public."Продажи" ("id_продажи") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Возвраты"
    ADD CONSTRAINT "Возвраты_id_сотрудника_fkey" FOREIGN KEY ("id_сотрудника")
    REFERENCES public."Сотрудники" ("id_сотрудника") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Возвраты"
    ADD CONSTRAINT "Возвраты_id_тура_fkey" FOREIGN KEY ("id_тура")
    REFERENCES public."Туры" ("id_тура") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Продажи"
    ADD CONSTRAINT "Продажи_id_клиента_fkey" FOREIGN KEY ("id_клиента")
    REFERENCES public."Клиенты" ("id_клиента") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Продажи"
    ADD CONSTRAINT "Продажи_id_сотрудника_fkey" FOREIGN KEY ("id_сотрудника")
    REFERENCES public."Сотрудники" ("id_сотрудника") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Продажи"
    ADD CONSTRAINT "Продажи_id_тура_fkey" FOREIGN KEY ("id_тура")
    REFERENCES public."Туры" ("id_тура") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Туры"
    ADD CONSTRAINT "Туры_id_вида_тура_fkey" FOREIGN KEY ("id_вида_тура")
    REFERENCES public."Виды_туров" ("id_вида_тура") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Туры"
    ADD CONSTRAINT "Туры_id_питания_fkey" FOREIGN KEY ("id_питания")
    REFERENCES public."Питание" ("id_питания") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Туры"
    ADD CONSTRAINT "Туры_id_скидки_fkey" FOREIGN KEY ("id_скидки")
    REFERENCES public."Скидки" ("id_скидки") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public."Туры"
    ADD CONSTRAINT "Туры_id_страны_fkey" FOREIGN KEY ("id_страны")
    REFERENCES public."Страны" ("id_страны") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;
