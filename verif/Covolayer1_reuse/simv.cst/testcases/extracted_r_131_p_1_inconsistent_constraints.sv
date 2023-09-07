class c_131_1;
    integer i = -129;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_131_1;
    c_131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101100xxx101zxz1z0zzx1010zzz1z1zxzxzzxzzzxxzzxzzxzxzxxzxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
