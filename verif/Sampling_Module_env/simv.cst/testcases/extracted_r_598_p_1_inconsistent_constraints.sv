class c_598_1;
    integer i = 598;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_598_1;
    c_598_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1x0x00101xxxx11x0zx1zz1zz0z11zzzzxxxxzzxxzxzzzzzxxxxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
