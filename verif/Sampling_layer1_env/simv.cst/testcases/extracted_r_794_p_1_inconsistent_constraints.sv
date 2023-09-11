class c_794_1;
    integer i = -131;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_794_1;
    c_794_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11xz100010xxz0001zz1zzx0z10xzxzxzxzxzxxzxzxxxzxzxzzzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
