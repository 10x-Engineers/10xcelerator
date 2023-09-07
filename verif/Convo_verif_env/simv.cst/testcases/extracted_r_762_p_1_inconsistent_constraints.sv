class c_762_1;
    integer i = 762;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_762_1;
    c_762_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzx1z1xzzx1011x1x11xz0zx0z0zz0zzxxxxzzxzzxzxxxzxxzxzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
