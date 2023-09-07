class c_1141_1;
    integer i = -189;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1141_1;
    c_1141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx0x1zxzx0x1x0z01zz1z0z10zxx10xxzzxzzzzzzxxxzzxxzzxxzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
