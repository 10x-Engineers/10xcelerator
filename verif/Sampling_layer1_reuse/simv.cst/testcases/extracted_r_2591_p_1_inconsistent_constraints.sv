class c_2591_1;
    integer i = -430;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2591_1;
    c_2591_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01100xzx110x1000100xz10x0z0zzxxzxxxzxzzzxzzzzzzxxzzzxzzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
