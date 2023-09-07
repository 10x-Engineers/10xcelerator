class c_2549_1;
    integer i = -423;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2549_1;
    c_2549_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zx00xz0zzzx1x110xz1xzx10xx101zzxxxzzxzxzzzxxxzxxxzxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
