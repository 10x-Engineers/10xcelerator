class c_2926_1;
    integer i = -486;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2926_1;
    c_2926_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz101z0xz1zxzzx001x1z1xxz0x1xxxxxxzzxzzzzzxzxxxxzxxxzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
