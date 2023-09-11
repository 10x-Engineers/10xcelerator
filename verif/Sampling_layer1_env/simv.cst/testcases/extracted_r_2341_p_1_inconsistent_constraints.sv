class c_2341_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2341_1;
    c_2341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzx00z0xx1zz111x100010z111z11zxzxxxzzzxxzzzzxxzxxxxzxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
