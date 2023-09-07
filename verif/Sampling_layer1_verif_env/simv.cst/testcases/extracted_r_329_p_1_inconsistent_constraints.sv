class c_329_1;
    integer i = -53;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_329_1;
    c_329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx1x11xx0x0x100xx0x010z1zxx1zzzxxzzzzzxxzxzzzzzxzzzzxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram