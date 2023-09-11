class c_1304_1;
    integer i = -216;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1304_1;
    c_1304_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x0z111z110z11z10x01zxzz1xx0x0zxxxxxxxzxzzzxxxzxxzzzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
