class c_2889_1;
    integer i = -480;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2889_1;
    c_2889_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x01zx1z1z10z1zzxxx011x011xx0zxxzxxxxzxxzxzxzzxxxxxxxxxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
