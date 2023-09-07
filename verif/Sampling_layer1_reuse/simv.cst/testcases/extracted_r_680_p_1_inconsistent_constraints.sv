class c_680_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_680_1;
    c_680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011x11xzzzx0x0xxzz0011101001z1xxxzxxxzxzxxxxxxzxzzzzxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
