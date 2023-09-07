class c_981_1;
    integer i = -162;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_981_1;
    c_981_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxx1xx00x00x11xz0xx0x1zz00x1xzxxzzzzzzxzzxzxzxzzzzxxxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
