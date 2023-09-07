class c_2716_1;
    integer i = -451;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2716_1;
    c_2716_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx1101z10x10xz0z0xzz101x0zzx01zzzzxxzzxxxzzzzzzxzxzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
