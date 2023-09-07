class c_726_1;
    integer i = 726;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_726_1;
    c_726_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zzxzz011z1zzxxxz0zz1z10xz0x1zxxxzxxzzxxzxxzxzzxzxxxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
