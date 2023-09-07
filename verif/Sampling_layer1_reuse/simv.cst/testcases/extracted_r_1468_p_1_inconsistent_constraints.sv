class c_1468_1;
    integer i = -243;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1468_1;
    c_1468_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzz1xzxx10x100xz10x10101x00z0zxzzxzxxzzzxzzxxzxxzzzxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
