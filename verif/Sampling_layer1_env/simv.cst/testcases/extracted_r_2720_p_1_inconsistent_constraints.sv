class c_2720_1;
    integer i = -452;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2720_1;
    c_2720_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzz1110zxx11xz1x011111xx0x111xzxzxzxxzzzzxxxxzxzzxxzzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
