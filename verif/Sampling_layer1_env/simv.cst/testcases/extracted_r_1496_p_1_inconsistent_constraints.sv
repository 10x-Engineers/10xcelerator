class c_1496_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1496_1;
    c_1496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01zxxx010xxxxxx00x1000xzzxx11zxxxxzxzxxxxxzzxxxzzzzxzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
