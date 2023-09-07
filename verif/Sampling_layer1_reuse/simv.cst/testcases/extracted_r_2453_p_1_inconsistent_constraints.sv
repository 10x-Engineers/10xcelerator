class c_2453_1;
    integer i = -407;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2453_1;
    c_2453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1z0001z00010z0z0zzx1xzx0x1zz0xxxxzzxzzxzxzzzzzzzxxzzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
