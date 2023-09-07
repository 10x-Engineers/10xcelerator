class c_1647_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1647_1;
    c_1647_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00zz00011x1zzxxzxz10zzxzz1z110xzxxzzzxzzzxxxzxxzxzzxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
