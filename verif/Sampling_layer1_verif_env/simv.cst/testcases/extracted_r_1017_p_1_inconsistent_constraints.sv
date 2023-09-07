class c_1017_1;
    integer i = -168;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1017_1;
    c_1017_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01x10zz00x1000100x10xzz00z00zxxxzxzzzzzzzzxxxxxxxzzzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
