class c_2864_1;
    integer i = -476;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2864_1;
    c_2864_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxzz01100xzx0xz11z111z0zz0zzx1zxxxzzxzxxxzxzzxzzzxzzzxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
