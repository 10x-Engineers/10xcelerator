class c_695_1;
    integer i = 695;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_695_1;
    c_695_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x00xxxx011xz01zzx0zzx110zz101xxzzxxzzzxxzxxzzzzxxxzxzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
