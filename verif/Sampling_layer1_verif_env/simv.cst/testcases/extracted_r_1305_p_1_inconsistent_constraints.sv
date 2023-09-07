class c_1305_1;
    integer i = -216;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1305_1;
    c_1305_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz1x0z1z1x0zx11xzzz0zzx0101xz1zxxzzzxxzxzxxxzxzzxzzzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram