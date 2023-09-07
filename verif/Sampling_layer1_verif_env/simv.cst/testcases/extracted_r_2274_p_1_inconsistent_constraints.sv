class c_2274_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2274_1;
    c_2274_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0100xz110z0000zzx010110xz0zx0xzxzxxzzzzzzxxzxxzxxxxxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
