class c_913_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_913_1;
    c_913_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00000x101z001x110z0z1xxx0xz11zzxxzzxxxzzzxzzxxzxzzzzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
