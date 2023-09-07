class c_747_1;
    integer i = -745;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_747_1;
    c_747_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx00zxxxx0zx10z01001z1z1111xx0zzxxzxzxxxzxzxxxzxzxzzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
