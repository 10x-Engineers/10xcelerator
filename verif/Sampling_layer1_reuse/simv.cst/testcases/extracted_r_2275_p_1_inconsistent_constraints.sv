class c_2275_1;
    integer i = -378;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2275_1;
    c_2275_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1xz011x0zz100zzxz0xxx0zx0x1xzzzxzxxxxxzzzzzzzzxxzxzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
